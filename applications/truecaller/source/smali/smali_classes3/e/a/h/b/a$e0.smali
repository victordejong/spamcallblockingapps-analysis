.class public final Le/a/h/b/a$e0;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/a;-><init>(Le/a/l4/c;Le/a/h/b/d/a/b/h;Le/a/h/b/d/a/a/l;Le/a/h/b/d/a/c/a;Le/a/h/b/h0;Le/a/h/b/d/a/b/t;Le/a/l/a2;Le/a/p5/c;Le/a/u3/g;ZLe/a/h/b/d/a/a/r;Le/a/h/b/d/a/a/v;Le/a/h/b/d/a/a/c;Le/a/h/b/d/a/a/h;Le/a/h/b/d/a/a/z;Le/a/h/b/d/a/a/e0/e;Le/a/i/d/x;Le/a/h/b/y0/b/b;Le/a/h/b/y0/b/g;Lcom/truecaller/calling/dialer/DialerMode;Le/a/a/m/g0;Le/a/a/m/o0;Le/a/a/m/z;Le/a/a/m/z;Le/a/a/m/b0;Le/a/a/m/f0;Le/a/a/m/e0;Le/a/a/m/a1;Le/a/a/m/y;Le/a/a/m/j0;Le/a/a/m/k0;Le/a/a/m/d0;Le/a/a/m/s0;Le/a/a/m/v0;Le/a/a/m/b1;Le/a/a/m/z0;Le/a/a/m/c1;Le/a/a/m/w0;Le/a/a/m/n0;Le/a/a/m/q0;Le/a/a/m/p0;Le/a/a/m/t0;Le/a/a/m/c0;Le/a/a/m/x0;Le/a/a/m/y0;Le/a/a/m/a0;Le/a/a/m/m0;Le/a/h/b/w0/d;ZLe/a/i/d/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/e/m1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/h/b/a;


# direct methods
.method public constructor <init>(Le/a/h/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/a$e0;->b:Le/a/h/b/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 9

    .line 1
    new-instance v7, Le/a/e/m1;

    .line 2
    iget-object v0, p0, Le/a/h/b/a$e0;->b:Le/a/h/b/a;

    invoke-static {v0}, Le/a/h/b/a;->b(Le/a/h/b/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "view.context"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object v2

    const/4 v0, 0x3

    new-array v0, v0, [Ls1/k;

    .line 3
    sget-object v3, Lcom/truecaller/calling/ActionType;->WHATSAPP_CALL:Lcom/truecaller/calling/ActionType;

    const v4, 0x7f0806ae

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4
    new-instance v5, Ls1/k;

    invoke-direct {v5, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v5, v0, v3

    .line 5
    sget-object v3, Lcom/truecaller/calling/ActionType;->WHATSAPP_VIDEO_CALL:Lcom/truecaller/calling/ActionType;

    .line 6
    new-instance v5, Ls1/k;

    invoke-direct {v5, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v1

    const/4 v1, 0x2

    .line 7
    sget-object v3, Lcom/truecaller/calling/ActionType;->VOIP_CALL:Lcom/truecaller/calling/ActionType;

    const v4, 0x7f0806ad

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 8
    new-instance v5, Ls1/k;

    invoke-direct {v5, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v1

    .line 9
    invoke-static {v0}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v3

    const v4, 0x7f0806a3

    const v5, 0x7f040592

    .line 10
    iget-object v0, p0, Le/a/h/b/a$e0;->b:Le/a/h/b/a;

    .line 11
    iget-object v6, v0, Le/a/h/b/a;->B:Le/a/e/k1;

    const v8, 0x7f080693

    move-object v0, v7

    move-object v1, v2

    move v2, v8

    .line 12
    invoke-direct/range {v0 .. v6}, Le/a/e/m1;-><init>(Landroid/content/Context;ILjava/util/Map;IILe/a/e/m1$b;)V

    return-object v7
.end method
