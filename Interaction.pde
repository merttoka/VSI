void keyPressed() {
  switch(key){
    case 'q':
      glitchLasttime = millis();
      glitchTime = 500;   break;
    case 'w':
      strobeLasttime = millis();
      strobeTime = 200;   break;
    case 'e':
      randomMaskLasttime = millis();
      randomMaskTime = 500;   break;
    case 't':
      isshake = !isshake;
      if(isshake) toggledFilters.add(shake);
      else toggledFilters.remove(shake); break;
    case 'y':
      isrgbShift = !isrgbShift;
      if(isrgbShift) toggledFilters.add(rgbShift);
      else toggledFilters.remove(rgbShift); break;
    case '1':
      ishueSaturation = !ishueSaturation;
      if(ishueSaturation) toggledFilters.add(hueSaturation);
      else toggledFilters.remove(hueSaturation); break;
    case '2':
      isbrightContrast = !isbrightContrast;
      if(isbrightContrast) toggledFilters.add(brightContrast);
      else toggledFilters.remove(brightContrast); break;
    case '3':
      isbarrelBlur = !isbarrelBlur;
      if(isbarrelBlur) toggledFilters.add(barrelBlur);
      else toggledFilters.remove(barrelBlur); break;
    case '4':
      isglow = !isglow;
      if(isglow) toggledFilters.add(glow);
      else toggledFilters.remove(glow); break;
    case '5':
      ishalftone = !ishalftone;
      if(ishalftone) toggledFilters.add(halftone);
      else toggledFilters.remove(halftone); break;
    case '6':
      ispixelate = !ispixelate;
      if(ispixelate) toggledFilters.add(pixelate);
      else toggledFilters.remove(pixelate); break;
    case '7':
      ispixelRolls = !ispixelRolls;
      if(ispixelRolls) toggledFilters.add(pixelRolls);
      else toggledFilters.remove(pixelRolls); break;
    case '8':
      ispatches = !ispatches;
      if(ispatches) toggledFilters.add(patches);
      else toggledFilters.remove(patches); break;
    case '9':
      isedge = !isedge;
      if(isedge) toggledFilters.add(edge);
      else toggledFilters.remove(edge); break;
    case '0':
      ismirror = !ismirror;
      if(ismirror) toggledFilters.add(mirror);
      else toggledFilters.remove(mirror); break;
    default:
      break;
  }
}