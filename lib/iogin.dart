import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './logout.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Iogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 130.0, middle: 0.5),
            Pin(size: 131.0, start: 50.0),
            child:
                // Adobe XD layer: 'NoPath' (shape)
                Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.cover,
                ),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 1.0, start: 81.2),
            Pin(size: 1.0, start: 0.0),
            child: SvgPicture.string(
              _svg_cvlwfb,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 280.6, start: -110.3),
            Pin(size: 239.2, start: -79.0),
            child: SvgPicture.string(
              _svg_qj0y7,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 239.0, middle: 0.444),
            child:
                // Adobe XD layer: 'undraw_Updated_resu…' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 43.0, end: 42.0),
            Pin(size: 47.0, middle: 0.2366),
            child: Text(
              'Welcome To Kmutnb',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 35,
                color: const Color(0xffeec21d),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 43.0, end: 42.0),
            Pin(size: 60.0, middle: 0.7206),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Logout(),
                ),
              ],
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: const Color(0xfff9d665),
                  border:
                      Border.all(width: 1.0, color: const Color(0xff707070)),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 43.0, end: 42.0),
            Pin(size: 60.0, end: 132.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xfff9d665),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 96.0, middle: 0.5),
            Pin(size: 47.0, middle: 0.7179),
            child: Text(
              'Login',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 35,
                color: const Color(0xffefeeec),
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 145.0, middle: 0.5018),
            Pin(size: 47.0, end: 138.0),
            child: Text(
              'SIGN UP',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 35,
                color: const Color(0xffefeeec),
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 257.3, end: -89.6),
            Pin(size: 269.8, end: -114.5),
            child: SvgPicture.string(
              _svg_cn4fc9,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_cvlwfb =
    '<svg viewBox="81.2 0.0 1.0 1.0" ><path  d="M 81.17433929443359 0" fill="#f3f86d" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qj0y7 =
    '<svg viewBox="-110.3 -79.0 280.6 239.2" ><path transform="matrix(0.819152, -0.573576, 0.573576, 0.819152, -468.8, 376.75)" d="M 465.9100341796875 -40.43400955200195 C 474.7163391113281 -5.108010292053223 506.0647583007812 25.98003387451172 540.1410522460938 44.42144012451172 C 563.309814453125 56.95998764038086 587.8323364257812 63.57835006713867 607.13037109375 61.46489334106445 C 683.9683227539062 53.05023956298828 736.8043823242188 -40.43400955200195 736.8043823242188 -40.43400955200195 L 465.9100341796875 -40.43400955200195 Z" fill="#f3f86d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cn4fc9 =
    '<svg viewBox="260.3 770.7 257.3 269.8" ><path transform="matrix(-0.669131, 0.743145, -0.743145, -0.669131, 799.29, 465.87)" d="M 465.9100341796875 -40.43400955200195 C 474.7163391113281 -5.108010292053223 506.0647583007812 25.98003387451172 540.1410522460938 44.42144012451172 C 563.309814453125 56.95998764038086 587.8323364257812 63.57835006713867 607.13037109375 61.46489334106445 C 683.9683227539062 53.05023956298828 736.8043823242188 -40.43400955200195 736.8043823242188 -40.43400955200195 L 465.9100341796875 -40.43400955200195 Z" fill="#f70828" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
