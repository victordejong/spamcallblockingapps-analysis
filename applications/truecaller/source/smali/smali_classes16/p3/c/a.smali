.class public Lp3/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lp3/c/d;

.field public static final b:Lp3/c/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lp3/c/d;

    const-string v1, ""

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v0, v1, v2, v3}, Lp3/c/d;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lp3/c/a;->a:Lp3/c/d;

    .line 2
    new-instance v0, Lp3/c/b;

    invoke-direct {v0, v2, v3}, Lp3/c/b;-><init>(J)V

    sput-object v0, Lp3/c/a;->b:Lp3/c/b;

    return-void
.end method

.method public constructor <init>(Lp3/c/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lp3/c/a;->a:Lp3/c/d;

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "nope"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
