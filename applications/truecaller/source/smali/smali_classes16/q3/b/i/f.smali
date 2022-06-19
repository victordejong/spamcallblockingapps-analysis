.class public final Lq3/b/i/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ls1/z/c/i0/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lq3/b/i/d;",
        ">;",
        "Ls1/z/c/i0/a;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/b/i/d;


# direct methods
.method public constructor <init>(Lq3/b/i/d;)V
    .locals 0

    iput-object p1, p0, Lq3/b/i/f;->a:Lq3/b/i/d;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lq3/b/i/d;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lq3/b/i/f$a;

    invoke-direct {v0, p0}, Lq3/b/i/f$a;-><init>(Lq3/b/i/f;)V

    return-object v0
.end method
