import { StatusBar } from 'expo-status-bar';
import React from 'react';
import { StyleSheet, Text, View, Image, Dimensions } from 'react-native';
import ImageZoom from 'react-native-image-pan-zoom';

export default function App() {
  return (
    <ImageZoom cropWidth={Dimensions.get('window').width}
               cropHeight={Dimensions.get('window').height}
               imageWidth={200}
               imageHeight={200}>
        <Image style={{width:200, height:200}}
               source={{uri:'https://www.fujifilm.com/products/digital_cameras/x/fujifilm_x_t1/sample_images/img/index/ff_x_t1_001.JPG'}}/>
    </ImageZoom>
);
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});
