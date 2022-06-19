.class public final Le/a/y4/g/g$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/y4/g/g;->a([J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/database/Cursor;",
        "Ls1/o<",
        "+",
        "Ljava/lang/Long;",
        "+",
        "Lcom/truecaller/data/entity/Contact;",
        "+",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final b:Le/a/y4/g/g$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/y4/g/g$b;

    invoke-direct {v0}, Le/a/y4/g/g$b;-><init>()V

    sput-object v0, Le/a/y4/g/g$b;->b:Le/a/y4/g/g$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroid/database/Cursor;

    const-string v0, "cursor"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/k3/j/d;

    invoke-direct {v0, p1}, Le/a/k3/j/d;-><init>(Landroid/database/Cursor;)V

    .line 4
    invoke-virtual {v0, p1}, Le/a/k3/j/d;->g(Landroid/database/Cursor;)Lcom/truecaller/data/entity/Contact;

    move-result-object v1

    .line 5
    iget v2, v0, Le/a/k3/j/d;->E:I

    invoke-virtual {v0, p1, v2}, Le/a/k3/j/a;->d(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ls1/o;

    invoke-direct {v2, v0, v1, p1}, Ls1/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method
