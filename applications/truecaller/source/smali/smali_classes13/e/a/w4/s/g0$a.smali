.class public final Le/a/w4/s/g0$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/w4/s/g0;->pe(Le/a/w4/s/r0$a;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
.field public final synthetic b:Le/a/w4/s/g0;

.field public final synthetic c:Ls1/z/c/y;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Le/a/w4/s/r0$a;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/w4/s/g0;Ls1/z/c/y;Ljava/lang/String;Le/a/w4/s/r0$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/w4/s/g0$a;->b:Le/a/w4/s/g0;

    iput-object p2, p0, Le/a/w4/s/g0$a;->c:Ls1/z/c/y;

    iput-object p3, p0, Le/a/w4/s/g0$a;->d:Ljava/lang/String;

    iput-object p4, p0, Le/a/w4/s/g0$a;->e:Le/a/w4/s/r0$a;

    iput-object p5, p0, Le/a/w4/s/g0$a;->f:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Le/a/w4/s/g0$a;->c:Ls1/z/c/y;

    iget-object v1, p0, Le/a/w4/s/g0$a;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, p1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, v0, Ls1/z/c/y;->a:Z

    .line 3
    iget-object v0, p0, Le/a/w4/s/g0$a;->e:Le/a/w4/s/r0$a;

    iget-object v1, p0, Le/a/w4/s/g0$a;->b:Le/a/w4/s/g0;

    iget-object v1, v1, Le/a/w4/s/g0;->k:Ljava/lang/String;

    iget-object v4, p0, Le/a/w4/s/g0$a;->d:Ljava/lang/String;

    iget-object v5, p0, Le/a/w4/s/g0$a;->f:Ljava/lang/String;

    const-string v6, "$this$highlightMessageIfMatched"

    .line 4
    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "pattern"

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "originalValue"

    invoke-static {v4, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "prefix"

    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, p1, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    invoke-virtual {v4, v3, p1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x2

    .line 7
    invoke-static {v4, v1, v3, v2, v7}, Ls1/f0/v;->H(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v8

    .line 8
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_2

    move v9, v2

    goto :goto_1

    :cond_2
    move v9, v3

    :goto_1
    if-eqz v9, :cond_4

    invoke-static {v6, v4, v2}, Ls1/f0/v;->z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    if-nez v6, :cond_4

    if-lez v8, :cond_4

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr p1, v6

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr v8, p1

    if-gtz v8, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v4, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {p1, v1, v3, v2, v7}, Ls1/f0/v;->H(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    .line 12
    invoke-static {v5, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    invoke-interface {v0, p1, v3, v1}, Le/a/h/z;->k3(Ljava/lang/String;II)V

    .line 13
    :cond_4
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
