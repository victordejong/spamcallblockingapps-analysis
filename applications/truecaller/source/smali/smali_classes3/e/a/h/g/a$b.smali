.class public final Le/a/h/g/a$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


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
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/h/g/a;

.field public final synthetic c:Le/a/h/g/a;


# direct methods
.method public constructor <init>(Le/a/h/g/a;Le/a/h/g/a;)V
    .locals 0

    iput-object p1, p0, Le/a/h/g/a$b;->b:Le/a/h/g/a;

    iput-object p2, p0, Le/a/h/g/a$b;->c:Le/a/h/g/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h/g/a$b;->b:Le/a/h/g/a;

    iget-object v1, p0, Le/a/h/g/a$b;->c:Le/a/h/g/a;

    invoke-static {v0, v1}, Le/a/h/g/a;->N4(Le/a/h/g/a;Le/a/h/g/a;)V

    .line 2
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
