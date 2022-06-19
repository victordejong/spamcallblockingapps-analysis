.class public final Le/a/h/b/y$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/y;-><init>(Ls1/w/f;Ls1/w/f;Le/a/l4/c;ZLcom/truecaller/calling/dialer/DialerMode;Le/a/h/b/w0/d;Le/a/h/t0/b;Le/a/p5/c0;Le/a/o5/f0;Lcom/truecaller/settings/CallingSettings;Le/a/h/b/d/b/c;Le/a/h/b/y0/a/b;Le/a/k3/j/b;Le/a/h0/j;Le/a/h/b/d/b/j;Le/a/h/b/d/b/j;Le/a/q2/s0;Le/a/q2/a;Le/a/r2/f;Le/a/e4/p;Le/a/y/c/b;Le/a/r2/f;Le/a/i/f0/c;Le/a/h/b0;Le/a/z4/a;Le/a/a/k0;Le/a/h/b/x0/b;Le/a/h/b/u0/b;Le/a/h/b/v0/b;Le/a/h/b/z0/b;Le/a/h/b/d/a/a/e0/b;Le/a/l/t2/d;Le/a/h/b/e/b;Lcom/truecaller/callhistory/data/FilterType;Lo3/a;Le/a/h/b/d/a/b/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/b/y;


# direct methods
.method public constructor <init>(Le/a/h/b/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/h/b/y$c;->a:Le/a/h/b/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h/b/y$c;->a:Le/a/h/b/y;

    .line 2
    iget-boolean v1, v0, Le/a/h/b/y;->B:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v0, v0, Le/a/h/b/y;->J:Ljava/util/Map;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Le/a/h/b/y$c;->a:Le/a/h/b/y;

    .line 6
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/b/v;

    if-eqz v0, :cond_0

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/h/b/v;->Yi(Ljava/util/Set;)V

    :cond_0
    return-void
.end method
