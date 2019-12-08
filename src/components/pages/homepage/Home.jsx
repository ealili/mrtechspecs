import React from 'react'
import Carousel from '../../carousel/Carousel'
import LatestPhones from '../LatestPhones'

export default function Home () {
  return (
    <div>
      <Carousel/>
      <div className="container" style={{ paddingTop: '2%' }}>
        <LatestPhones/>
      </div>
    </div>
  )
}
