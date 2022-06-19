.class public Le/m/h/a/c/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/h/a/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Le/m/h/a/c/b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/m/d/v/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/v/b<",
            "+",
            "Le/m/h/a/d/n/h<",
            "+",
            "Le/m/h/a/c/b;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Le/m/d/v/b;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RemoteT:",
            "Le/m/h/a/c/b;",
            ">(",
            "Ljava/lang/Class<",
            "TRemoteT;>;",
            "Le/m/d/v/b<",
            "+",
            "Le/m/h/a/d/n/h<",
            "TRemoteT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/h/a/c/c$a;->a:Ljava/lang/Class;

    .line 3
    iput-object p2, p0, Le/m/h/a/c/c$a;->b:Le/m/d/v/b;

    return-void
.end method
