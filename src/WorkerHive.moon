create_worker_bee = (taskList) ->
  bee = {
    taskList: taskList or {},
    work: =>
      if #@taskList > 0
        result = @taskList[#@taskList]()
        @taskList[#@taskList] = nil
        coroutine.yield result
      else
        print "Im done working now, need more tasks"
        return  nil
  }
  
  return bee


runit = (handle)->
  ok, result = coroutine.resume handle
  if ok
    print(result)
    return result
  else
    print("Coroutine failed")
  return nil

make_bees_work = () ->
  tasks = {
    () -> print(1) 1,
    () -> print(2) 2,
    () -> print(3) 3,
  }
  bee1 = create_worker_bee(tasks)
  table.insert(bee1.taskList, () -> print('Hello world') 4)
  handle1 = coroutine.create(() -> bee1\work!)
  a1 = runit handle1
  a2 = runit handle1
  a3 = runit handle1
  a4 = runit handle1
  return {a1, a2, a3, a4}

return {:create_worker_bee, :make_bees_work}
