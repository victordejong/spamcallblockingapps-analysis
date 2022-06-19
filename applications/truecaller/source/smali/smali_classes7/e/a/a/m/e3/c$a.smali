.class public final Le/a/a/m/e3/c$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/m/e3/c;->v(Le/a/o2/h;)Z
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
.field public final synthetic b:Le/a/a/m/e3/c;


# direct methods
.method public constructor <init>(Le/a/a/m/e3/c;)V
    .locals 0

    iput-object p1, p0, Le/a/a/m/e3/c$a;->b:Le/a/a/m/e3/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    iget-object p1, p0, Le/a/a/m/e3/c$a;->b:Le/a/a/m/e3/c;

    .line 3
    iget-object p1, p1, Le/a/a/m/e3/c;->c:Le/a/a/m/f1$a;

    .line 4
    invoke-interface {p1}, Le/a/a/m/f1$a;->gh()V

    .line 5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
