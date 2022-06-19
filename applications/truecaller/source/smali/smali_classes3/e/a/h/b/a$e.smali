.class public final Le/a/h/b/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/d/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/a;-><init>(Le/a/l4/c;Le/a/h/b/d/a/b/h;Le/a/h/b/d/a/a/l;Le/a/h/b/d/a/c/a;Le/a/h/b/h0;Le/a/h/b/d/a/b/t;Le/a/l/a2;Le/a/p5/c;Le/a/u3/g;ZLe/a/h/b/d/a/a/r;Le/a/h/b/d/a/a/v;Le/a/h/b/d/a/a/c;Le/a/h/b/d/a/a/h;Le/a/h/b/d/a/a/z;Le/a/h/b/d/a/a/e0/e;Le/a/i/d/x;Le/a/h/b/y0/b/b;Le/a/h/b/y0/b/g;Lcom/truecaller/calling/dialer/DialerMode;Le/a/a/m/g0;Le/a/a/m/o0;Le/a/a/m/z;Le/a/a/m/z;Le/a/a/m/b0;Le/a/a/m/f0;Le/a/a/m/e0;Le/a/a/m/a1;Le/a/a/m/y;Le/a/a/m/j0;Le/a/a/m/k0;Le/a/a/m/d0;Le/a/a/m/s0;Le/a/a/m/v0;Le/a/a/m/b1;Le/a/a/m/z0;Le/a/a/m/c1;Le/a/a/m/w0;Le/a/a/m/n0;Le/a/a/m/q0;Le/a/a/m/p0;Le/a/a/m/t0;Le/a/a/m/c0;Le/a/a/m/x0;Le/a/a/m/y0;Le/a/a/m/a0;Le/a/a/m/m0;Le/a/h/b/w0/d;ZLe/a/i/d/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/b/a;


# direct methods
.method public constructor <init>(Le/a/h/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/h/b/a$e;->a:Le/a/h/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdShown()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h/b/a$e;->a:Le/a/h/b/a;

    .line 2
    iget-object v0, v0, Le/a/h/b/a;->V:Le/a/i/d/b;

    const-string v1, "CALLLOG"

    .line 3
    invoke-interface {v0, v1}, Le/a/i/d/b;->G3(Ljava/lang/String;)V

    return-void
.end method
