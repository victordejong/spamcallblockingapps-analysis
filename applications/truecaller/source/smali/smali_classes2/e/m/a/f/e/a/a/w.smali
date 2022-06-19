.class public final Le/m/a/f/e/a/a/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/f/e/a/a/x;


# direct methods
.method public constructor <init>(Le/m/a/f/e/a/a/x;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/e/a/a/w;->a:Le/m/a/f/e/a/a/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/m/a/f/e/a/a/w;->a:Le/m/a/f/e/a/a/x;

    iget-object v0, v0, Le/m/a/f/e/a/a/x;->a:Lcom/google/android/gms/common/api/internal/zabl;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabl;->b:Lcom/google/android/gms/common/api/Api$Client;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " disconnecting because it was signed out."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/Api$Client;->disconnect(Ljava/lang/String;)V

    return-void
.end method
