.class final Lg/g/b/d/d/a$b$a;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/d/d/a$b;->a()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Landroid/database/Cursor;",
        "Lg/g/b/d/e/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lg/g/b/d/d/a$b;


# direct methods
.method constructor <init>(Lg/g/b/d/d/a$b;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/d/d/a$b$a;->f:Lg/g/b/d/d/a$b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)Lg/g/b/d/e/a;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg/g/b/d/d/a$b$a;->f:Lg/g/b/d/d/a$b;

    iget-object v0, v0, Lg/g/b/d/d/a$b;->f:Lg/g/b/d/d/a;

    invoke-static {v0}, Lg/g/b/d/d/a;->a(Lg/g/b/d/d/a;)Lg/g/b/d/e/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/g/b/d/e/b;->a(Landroid/database/Cursor;)Lg/g/b/d/e/a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lg/g/b/d/d/a$b$a;->a(Landroid/database/Cursor;)Lg/g/b/d/e/a;

    move-result-object p1

    return-object p1
.end method
