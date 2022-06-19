.class public final Le/a/a/b/s$b;
.super Le/a/b0/i/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/b/s;-><init>(Lcom/truecaller/messaging/data/types/InboxTab;Ls1/w/f;Le/a/o5/f0;Le/a/a/i0;Le/a/f4/g/j;Le/a/r2/j;Lo3/a;Le/a/i/f0/c;Lo3/a;Le/a/p5/h0;Le/a/r2/f;Le/a/q2/a;Le/a/r2/f;Le/a/r2/f;Le/a/p5/a0;Le/a/r2/f;Le/a/b0/e/l;Le/a/z4/a;Le/a/a/b/d0;Le/a/r2/f;Le/a/a/i1/b;Le/a/q2/i0;Le/a/u3/g;Le/a/a/g/g0;Le/a/a/k/a/p0;Le/a/l/t2/d;Le/a/d4/a;Le/a/a/o0/a;Le/a/a/k/a/r0;Le/a/p5/g;Le/a/a/m/g3/f;Le/a/a/i1/d;Le/a/a/w;Le/a/c/a/c/f/d;Le/a/b0/m/c/a;Le/a/c/e/c;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic d:Le/a/a/b/s;


# direct methods
.method public constructor <init>(Le/a/a/b/s;Landroid/os/Handler;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "J)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/b/s$b;->d:Le/a/a/b/s;

    invoke-direct {p0, p2, p3, p4}, Le/a/b0/i/b;-><init>(Landroid/os/Handler;J)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/b/s$b;->d:Le/a/a/b/s;

    .line 2
    iget-boolean v1, v0, Le/a/a/b/s;->u:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Le/a/a/b/s;->Lj()V

    :cond_0
    return-void
.end method
