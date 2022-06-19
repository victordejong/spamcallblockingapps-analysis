.class public final synthetic Le/a/d5/d$c$a;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d5/d$c;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/l<",
        "Lo3/a<",
        "+",
        "Le/a/d5/b;",
        ">;",
        "Le/a/d5/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final j:Le/a/d5/d$c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/d5/d$c$a;

    invoke-direct {v0}, Le/a/d5/d$c$a;-><init>()V

    sput-object v0, Le/a/d5/d$c$a;->j:Le/a/d5/d$c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-class v2, Lo3/a;

    const/4 v1, 0x1

    const-string v3, "get"

    const-string v4, "get()Ljava/lang/Object;"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ls1/z/c/j;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lo3/a;

    const-string v0, "p1"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d5/b;

    return-object p1
.end method
