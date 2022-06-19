.class public final Le/a/j/a/a/a/c/a$e$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/j/a/a/a/c/a$e;-><init>(Le/a/j/a/a/a/c/a;Ls1/z/b/l;Ls1/z/b/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/p<",
        "Le/a/j/a/a/a/c/f;",
        "Le/a/j/a/a/a/c/f;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/j/a/a/a/c/a$e$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/j/a/a/a/c/a$e$c;

    invoke-direct {v0}, Le/a/j/a/a/a/c/a$e$c;-><init>()V

    sput-object v0, Le/a/j/a/a/a/c/a$e$c;->b:Le/a/j/a/a/a/c/a$e$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Le/a/j/a/a/a/c/f;

    check-cast p2, Le/a/j/a/a/a/c/f;

    const-string v0, "oldItem"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Le/a/j/a/a/a/c/f;->b:Ljava/util/UUID;

    iget-object p2, p2, Le/a/j/a/a/a/c/f;->b:Ljava/util/UUID;

    .line 4
    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
