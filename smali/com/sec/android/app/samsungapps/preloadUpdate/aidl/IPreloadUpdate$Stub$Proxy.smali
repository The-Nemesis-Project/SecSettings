.class Lcom/sec/android/app/samsungapps/preloadUpdate/aidl/IPreloadUpdate$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPreloadUpdate.java"

# interfaces
.implements Lcom/sec/android/app/samsungapps/preloadUpdate/aidl/IPreloadUpdate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/samsungapps/preloadUpdate/aidl/IPreloadUpdate$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/sec/android/app/samsungapps/preloadUpdate/aidl/IPreloadUpdate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 63
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/samsungapps/preloadUpdate/aidl/IPreloadUpdate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public update(Lcom/sec/android/app/samsungapps/preloadUpdate/aidl/IPreloadUpdateResult;)V
    .locals 5
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 75
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 77
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sec.android.app.samsungapps.preloadUpdate.aidl.IPreloadUpdate"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 78
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/samsungapps/preloadUpdate/aidl/IPreloadUpdateResult;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 79
    iget-object v2, p0, Lcom/sec/android/app/samsungapps/preloadUpdate/aidl/IPreloadUpdate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 80
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 84
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 86
    return-void

    .line 78
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v2

    .line 83
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 84
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 85
    throw v2
.end method