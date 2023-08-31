access(all) contract SomeContract {
    pub var testStruct: SomeStruct

    pub struct SomeStruct {

        //
        // 4 Variables
        //

        /* 
        * The read scope is in Areas 1, 2, 3, and 4,
        * while the write scope is in Areas 1, 2, 3, and 4
        */
        pub(set) var a: String

        /* 
        * The read scope is in  Areas 1, 2, 3, and 4,
        * while the write scope is in Area 1 only
        */
        pub var b: String

        /* 
        * The read scope is in Areas 1, 2, and 3
        * while the write scope is in Area 1 only
        */
        access(contract) var c: String

        /* 
        * The read Read scope is in  Area 1 only
        * while the write scope is in Area 1 only
        */
        access(self) var d: String

        //
        // 3 Functions
        //

        /* 
        * This function can be called in Areas 1, 2, 3, and 4
        * because it is a global or public function
        */
        pub fun publicFunc() {}

        /* 
        * This function can only be called in Areas 1, 2, and 3
        * because the access is inside the contract only
        */
        access(contract) fun contractFunc() {}

        /*
        * This function can only be called in Area 1
        * because the access is inside the struct only
        */
        access(self) fun privateFunc() {}


        pub fun structFunc() {
            /**************/
            /*** AREA 1 ***/
            /**************/
        }

        init() {
            self.a = "a"
            self.b = "b"
            self.c = "c"
            self.d = "d"
        }
    }

    pub resource SomeResource {
        pub var e: Int

        pub fun resourceFunc() {
            /**************/
            /*** AREA 2 ***/
            /**************/
        }

        init() {
            self.e = 17
        }
    }

    pub fun createSomeResource(): @SomeResource {
        return <- create SomeResource()
    }

    pub fun questsAreFun() {
        /**************/
        /*** AREA 3 ****/
        /**************/
    }

    init() {
        self.testStruct = SomeStruct()
    }
}