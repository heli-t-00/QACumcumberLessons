package stepdefs

import io.cucumber.scala.{EN, ScalaDsl}

class StepDefRegistration extends ScalaDsl with EN {

  Given ("""the user is on registration page""") {() =>

  }

  When ("""he user enters user information "<name>" and "<email> and "<password>"""") {()

  }

  And ("""click register button""") {() =>


  }

  Then ("""the confirmation message appears saying "Registration successful"""")
}