.class public final Le/a/v/a/i0/e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Integer;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/v/a/i0/d;

.field public final synthetic c:Le/a/v/a/s;

.field public final synthetic d:Lcom/truecaller/data/entity/Number;


# direct methods
.method public constructor <init>(Le/a/v/a/i0/d;Le/a/v/a/s;Lcom/truecaller/data/entity/Number;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/i0/e;->b:Le/a/v/a/i0/d;

    iput-object p2, p0, Le/a/v/a/i0/e;->c:Le/a/v/a/s;

    iput-object p3, p0, Le/a/v/a/i0/e;->d:Lcom/truecaller/data/entity/Number;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Le/a/v/a/i0/e;->b:Le/a/v/a/i0/d;

    .line 3
    iget-object v0, v0, Le/a/v/a/i0/d;->f:Le/a/v/a/z/a;

    .line 4
    invoke-virtual {v0}, Le/a/v/a/z/a;->a()V

    .line 5
    iget-object v0, p0, Le/a/v/a/i0/e;->b:Le/a/v/a/i0/d;

    .line 6
    iget-object v0, v0, Le/a/v/a/i0/d;->c:Le/a/v/p/g;

    .line 7
    iget-object v1, p0, Le/a/v/a/i0/e;->c:Le/a/v/a/s;

    .line 8
    iget-object v1, v1, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 9
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object v1

    const-string v2, "detailsViewModel.contact.displayNameOrNumber"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Le/a/v/a/i0/e;->d:Lcom/truecaller/data/entity/Number;

    invoke-interface {v0, v1, v2, p1}, Le/a/v/p/g;->d(Ljava/lang/String;Lcom/truecaller/data/entity/Number;I)V

    .line 10
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
