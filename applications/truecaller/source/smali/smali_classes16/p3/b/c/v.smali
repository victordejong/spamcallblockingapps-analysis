.class public abstract Lp3/b/c/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/b/c/v$b;
    }
.end annotation


# static fields
.field public static final a:Lp3/b/c/v$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp3/b/c/v$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp3/b/c/v$b;-><init>(Lp3/b/c/v$a;)V

    sput-object v0, Lp3/b/c/v;->a:Lp3/b/c/v$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
