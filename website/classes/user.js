var User = (function(){
    function User() {
        //do stuff
    }
    var instance;
    return {
        getInstance: function(){
            if (instance == null) {
                instance = new User();
                // Hide the constructor so the returned objected can't be new'd...
                instance.constructor = null;
            }
            return instance;
        }
   };
})();
