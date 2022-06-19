.class public final synthetic Le/m/d/z/g/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic a:Lcom/google/firebase/perf/config/RemoteConfigManager;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/perf/config/RemoteConfigManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/z/g/c;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Le/m/d/z/g/c;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->b(Ljava/lang/Exception;)V

    return-void
.end method
