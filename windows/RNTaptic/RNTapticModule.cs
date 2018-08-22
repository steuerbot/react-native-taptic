using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Taptic.RNTaptic
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNTapticModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNTapticModule"/>.
        /// </summary>
        internal RNTapticModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNTaptic";
            }
        }
    }
}
