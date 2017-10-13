using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Caching;

namespace Common
{
    public static class CacheHelper<T>
    {
        private static readonly System.Web.Caching.Cache _cache;
        /// <summary>
        /// 构造方法，获取当前应用程序的System.Web.Caching.Cache
        /// </summary>
        static CacheHelper()
        {
            if (_cache == null)
            {
                _cache = System.Web.HttpRuntime.Cache;
            }
        }
        /// <summary>
        /// 向 System.Web.Caching.Cache 对象插入项，该项带有一个缓存键引用其位置，并使用 System.Web.Caching.CacheItemPriority枚举提供的默认值。
        /// </summary>
        /// <param name="key">用于引用该项的缓存键。</param>
        /// <param name="keyValue">要插入缓存中的对象</param>
        public static void Insert(string strKey, T keyValue)
        {
            _cache.Insert(strKey, keyValue);
        }
        /// <summary>
        /// 向 System.Web.Caching.Cache 中插入具有文件依赖项或键依赖项的对象。
        /// </summary>
        /// <param name="key">用于标识该项的缓存键。</param>
        /// <param name="keyValue">要插入缓存中的对象</param>
        /// <param name="dependency">所插入对象的文件依赖项或缓存键依赖项。当任何依赖项更改时，该对象即无效，并从缓存中移除。如果没有依赖项，则此参数包含 null。</param>
        public static void Insert(string strKey, T keyValue, CacheDependency dependency)
        {
            _cache.Insert(strKey, keyValue, dependency);
        }
        /// <summary>
        /// 向 System.Web.Caching.Cache 中插入具有依赖项和过期策略的对象。
        /// </summary>
        /// <param name="key">用于引用该对象的缓存键。</param>
        /// <param name="keyValue">要插入缓存中的对象</param>
        /// <param name="dependency">所插入对象的文件依赖项或缓存键依赖项。当任何依赖项更改时，该对象即无效，并从缓存中移除。如果没有依赖项，则此参数包含 null。</param>
        /// <param name="absoluteExpiration">所插入对象将过期并被从缓存中移除的时间。如果使用绝对过期，则 slidingExpiration 参数必须为 System.Web.Caching.Cache.NoSlidingExpiration。</param>
        /// <param name="slidingExpiration">最后一次访问所插入对象时与该对象过期时之间的时间间隔。如果该值等效于 20 分钟，则对象在最后一次被访问 20 分钟之后将过期并被从缓存中移除。如果使用可调过期，则absoluteExpiration 参数必须为 System.Web.Caching.Cache.NoAbsoluteExpiration。</param>
        public static void Insert(string strKey, T keyValue, CacheDependency dependency, DateTime absoluteExpiration, TimeSpan slidingExpiration)
        {
            _cache.Insert(strKey, keyValue, dependency, absoluteExpiration, slidingExpiration);
        }
        /// <summary>
        /// 向 System.Web.Caching.Cache 对象中插入对象，后者具有依赖项、过期和优先级策略以及一个委托（可用于在从 Cache 移除插入项时通知应用程序）。
        /// </summary>
        /// <param name="key">用于引用该对象的缓存键。</param>
        /// <param name="keyValue">要插入缓存中的对象</param>
        /// <param name="dependency">该项的文件依赖项或缓存键依赖项。当任何依赖项更改时，该对象即无效，并从缓存中移除。如果没有依赖项，则此参数包含 null。</param>
        /// <param name="absoluteExpiration">所插入对象将过期并被从缓存中移除的时间。如果使用绝对过期，则 slidingExpiration 参数必须为 System.Web.Caching.Cache.NoSlidingExpiration。</param>
        /// <param name="slidingExpiration">最后一次访问所插入对象时与该对象过期时之间的时间间隔。如果该值等效于 20 分钟，则对象在最后一次被访问 20 分钟之后将过期并被从缓存中移除。如果使用可调过期，则absoluteExpiration 参数必须为 System.Web.Caching.Cache.NoAbsoluteExpiration。</param>
        /// <param name="priority">该对象相对于缓存中存储的其他项的成本，由 System.Web.Caching.CacheItemPriority 枚举表示。该值由缓存在退出对象时使用；具有较低成本的对象在具有较高成本的对象之前被从缓存移除。</param>
        /// <param name="onRemoveCallback">在从缓存中移除对象时将调用的委托（如果提供）。当从缓存中删除应用程序的对象时，可使用它来通知应用程序。</param>
        public static void Insert(string strKey, T keyValue, CacheDependency dependency, DateTime absoluteExpiration, TimeSpan slidingExpiration, CacheItemPriority priority, CacheItemRemovedCallback onRemoveCallback)
        {
            _cache.Insert(strKey, keyValue, dependency, absoluteExpiration, slidingExpiration, priority, onRemoveCallback);
        }
        /// <summary>
        /// 获取或设置指定键处的缓存项。
        /// </summary>
        /// <param name="key">用于引用该对象的缓存键</param>
        /// <returns></returns>
        public static T GetCache(string strKey)
        {
            return (T)_cache[strKey];
        }
        /// <summary>
        /// 从应用程序的 System.Web.Caching.Cache 对象移除指定项。
        /// </summary>
        /// <param name="key">要移除的缓存项的 System.String 标识符。</param>
        public static void Remove(string strKey)
        {
            _cache.Remove(strKey);
        }
    }
}
