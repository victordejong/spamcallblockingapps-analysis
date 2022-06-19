.class public final synthetic Le/a/l0/a$g;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l0/a;->u(J)Le/a/r2/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/l<",
        "Landroid/database/Cursor;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final j:Le/a/l0/a$g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/l0/a$g;

    invoke-direct {v0}, Le/a/l0/a$g;-><init>()V

    sput-object v0, Le/a/l0/a$g;->j:Le/a/l0/a$g;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-class v2, Le/a/l0/u/d/b;

    const/4 v1, 0x1

    const-string v3, "close"

    const-string v4, "close()V"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ls1/z/c/j;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Le/a/l0/u/d/b;

    const-string v0, "p1"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
