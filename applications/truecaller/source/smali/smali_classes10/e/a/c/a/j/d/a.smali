.class public final Le/a/c/a/j/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lq3/a/x2/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/i1<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object v0

    iput-object v0, p0, Le/a/c/a/j/d/a;->a:Lq3/a/x2/a1;

    .line 3
    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->E(Lq3/a/x2/a1;)Lq3/a/x2/i1;

    move-result-object v0

    iput-object v0, p0, Le/a/c/a/j/d/a;->b:Lq3/a/x2/i1;

    return-void
.end method
