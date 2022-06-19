.class public final Lp3/a/n1/f2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/n1/f2$a;,
        Lp3/a/n1/f2$b;
    }
.end annotation


# static fields
.field public static final a:Lp3/a/n1/e2;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lp3/a/n1/f2$b;

    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 2
    invoke-direct {v0, v2, v1, v1}, Lp3/a/n1/f2$b;-><init>([BII)V

    .line 3
    sput-object v0, Lp3/a/n1/f2;->a:Lp3/a/n1/e2;

    return-void
.end method
