.class public final synthetic Le/a/p5/t0/a$b;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/p5/t0/a;->p3(Ljava/util/List;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/l<",
        "Landroid/content/SharedPreferences;",
        "Landroid/content/SharedPreferences$Editor;",
        ">;"
    }
.end annotation


# static fields
.field public static final j:Le/a/p5/t0/a$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/p5/t0/a$b;

    invoke-direct {v0}, Le/a/p5/t0/a$b;-><init>()V

    sput-object v0, Le/a/p5/t0/a$b;->j:Le/a/p5/t0/a$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-class v2, Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    const-string v3, "edit"

    const-string v4, "edit()Landroid/content/SharedPreferences$Editor;"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ls1/z/c/j;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/content/SharedPreferences;

    const-string v0, "p1"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method
