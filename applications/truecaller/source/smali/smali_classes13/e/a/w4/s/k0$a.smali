.class public final Le/a/w4/s/k0$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/w4/s/k0;-><init>(Lcom/truecaller/common/ui/listitem/ListItemX;Le/a/l4/c;Le/a/p5/c;Le/f/a/i;Le/a/o2/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/l4/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/w4/s/k0;

.field public final synthetic c:Le/a/l4/c;

.field public final synthetic d:Le/a/p5/c;


# direct methods
.method public constructor <init>(Le/a/w4/s/k0;Le/a/l4/c;Le/a/p5/c;)V
    .locals 0

    iput-object p1, p0, Le/a/w4/s/k0$a;->b:Le/a/w4/s/k0;

    iput-object p2, p0, Le/a/w4/s/k0$a;->c:Le/a/l4/c;

    iput-object p3, p0, Le/a/w4/s/k0$a;->d:Le/a/p5/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Le/a/l4/d;

    new-instance v1, Le/a/p5/i0;

    iget-object v2, p0, Le/a/w4/s/k0$a;->b:Le/a/w4/s/k0;

    .line 2
    iget-object v2, v2, Le/a/w4/s/k0;->b:Landroid/content/Context;

    .line 3
    invoke-direct {v1, v2}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Le/a/w4/s/k0$a;->c:Le/a/l4/c;

    iget-object v3, p0, Le/a/w4/s/k0$a;->d:Le/a/p5/c;

    invoke-direct {v0, v1, v2, v3}, Le/a/l4/d;-><init>(Le/a/p5/h0;Le/a/l4/c;Le/a/p5/c;)V

    return-object v0
.end method
