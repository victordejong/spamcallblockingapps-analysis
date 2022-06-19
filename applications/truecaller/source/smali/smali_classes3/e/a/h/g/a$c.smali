.class public final Le/a/h/g/a$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/g/a;-><init>(Landroid/view/View;Le/a/o2/m;Le/a/l4/c;Le/a/p5/c;Le/a/k0/n/e/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/h/g/a;


# direct methods
.method public constructor <init>(Le/a/h/g/a;)V
    .locals 0

    iput-object p1, p0, Le/a/h/g/a$c;->b:Le/a/h/g/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2
    iget-object v0, p0, Le/a/h/g/a$c;->b:Le/a/h/g/a;

    .line 3
    iget-object v0, v0, Le/a/h/g/a;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    if-eqz p1, :cond_0

    const p1, 0x7f080763

    goto :goto_0

    :cond_0
    const p1, 0x7f0805b6

    .line 4
    :goto_0
    new-instance v1, Le/a/h/g/h;

    invoke-direct {v1, p0}, Le/a/h/g/h;-><init>(Le/a/h/g/a$c;)V

    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/truecaller/common/ui/listitem/ListItemX;->i1(ILs1/z/b/l;)V

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
