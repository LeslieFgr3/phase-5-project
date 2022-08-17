import React from 'react'
import { Button, Form, Grid, Header, Image, Segment } from 'semantic-ui-react'

const LoginForm = () => (
  <Grid textAlign='center' style={{ height: '100vh' }} verticalAlign='middle'>
    <Grid.Column style={{ maxWidth: 450 }}>
      <Header className='loginheader' as='h2' color='teal' textAlign='center'>
        <Image src='/logo.png' /> Log-in to your account
      </Header>
      <Form size='large'>
        <Segment stacked>
          <Form.Input className='usernameform' fluid icon='user' iconPosition='left' placeholder='Username' />
          <Form.Input className='passwordform'
            fluid
            icon='lock'
            iconPosition='left'
            placeholder='Password'
            type='password'
          />

          <Button className='loginButton' color='teal' fluid size='large'>
            Login
          </Button>
        </Segment>
      </Form>
     
    </Grid.Column>
  </Grid>
)

export default LoginForm