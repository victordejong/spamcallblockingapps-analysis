.class public final Le/a/j/a/a/a/c/a$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/j/a/a/a/c/a$i;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/j/a/a/a/c/a$i;


# direct methods
.method public constructor <init>(Le/a/j/a/a/a/c/a$i;)V
    .locals 0

    iput-object p1, p0, Le/a/j/a/a/a/c/a$i$a;->a:Le/a/j/a/a/a/c/a$i;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object p2, p0, Le/a/j/a/a/a/c/a$i$a;->a:Le/a/j/a/a/a/c/a$i;

    iget-object p2, p2, Le/a/j/a/a/a/c/a$i;->f:Le/a/j/a/a/a/c/a;

    .line 3
    sget-object v0, Le/a/j/a/a/a/c/a;->h:[Ls1/a/l;

    .line 4
    invoke-virtual {p2}, Le/a/j/a/a/a/c/a;->RA()Le/a/j/d/e;

    move-result-object p2

    .line 5
    iget-object p2, p2, Le/a/j/d/e;->d:Landroid/widget/TextView;

    const-string v0, "binding.title"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
