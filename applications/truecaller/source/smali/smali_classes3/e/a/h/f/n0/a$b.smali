.class public final Le/a/h/f/n0/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/h/f/n0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Le/a/h/f/n0/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Le/a/h/f/n0/a$a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/f/n0/a$b;->a:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/h/f/n0/a$b;->a:Ljava/lang/Iterable;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2
    new-instance v2, Ls1/k;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/h/f/n0/a$a;

    .line 4
    iget-object v3, v2, Ls1/k;->a:Ljava/lang/Object;

    .line 5
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 6
    iget-object v2, v2, Ls1/k;->b:Ljava/lang/Object;

    .line 7
    check-cast v2, Ljava/lang/String;

    .line 8
    iget-object v4, v1, Le/a/h/f/n0/a$a;->a:Ljava/lang/String;

    .line 9
    iget v1, v1, Le/a/h/f/n0/a$a;->b:I

    if-gt p1, v3, :cond_0

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 11
    new-instance v3, Ls1/k;

    invoke-direct {v3, v1, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v3

    goto :goto_0

    :cond_0
    add-int/2addr v3, v1

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 13
    new-instance v2, Ls1/k;

    invoke-direct {v2, v1, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, v2, Ls1/k;->b:Ljava/lang/Object;

    .line 15
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
