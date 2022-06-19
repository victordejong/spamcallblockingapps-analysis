.class public final Le/a/a/l/a$f;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/l/a;->Jv(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/text/Editable;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/l/a;


# direct methods
.method public constructor <init>(Le/a/a/l/a;)V
    .locals 0

    iput-object p1, p0, Le/a/a/l/a$f;->b:Le/a/a/l/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/text/Editable;

    .line 2
    iget-object v0, p0, Le/a/a/l/a$f;->b:Le/a/a/l/a;

    invoke-virtual {v0}, Le/a/a/l/a;->PA()Le/a/a/l/b;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/a/l/b;->ug(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/a/l/a$f;->b:Le/a/a/l/a;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v1, v0}, Le/a/a/l/a;->QA(Le/a/a/l/a;IZI)V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
