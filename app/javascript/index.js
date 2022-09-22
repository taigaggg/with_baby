window.addEventListener('load', function(){
  const pullDiaryButton = document.getElementById("diary-btn")
  pullDiaryButton.addEventListener('mouseover', function(){
    pullDiaryButton.setAttribute("style", "background-color:rgb(255, 145, 0);")
  })

  pullDiaryButton.addEventListener('mouseout', function(){
    pullDiaryButton.removeAttribute("style", "background-color:orange;")
  })

  const pullMealButton = document.getElementById("meal-btn")
  pullMealButton.addEventListener('mouseover', function(){
    pullMealButton.setAttribute("style", "background-color:rgb(255, 145, 0);")

  })

  pullMealButton.addEventListener('mouseout', function(){
    pullMealButton.removeAttribute("style", "background-color:orange;")
  })

})