.class public final Le/a/h/g/h;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/view/View;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/h/g/a$c;


# direct methods
.method public constructor <init>(Le/a/h/g/a$c;)V
    .locals 0

    iput-object p1, p0, Le/a/h/g/h;->b:Le/a/h/g/a$c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/h/g/h;->b:Le/a/h/g/a$c;

    iget-object p1, p1, Le/a/h/g/a$c;->b:Le/a/h/g/a;

    invoke-static {p1, p1}, Le/a/h/g/a;->N4(Le/a/h/g/a;Le/a/h/g/a;)V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
