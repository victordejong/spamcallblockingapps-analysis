.class public final Le/a/m0/c1/a0$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m0/c1/a0$b;
.implements Le/a/m0/c1/b0$p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/m0/c1/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/m0/c1/a0$g;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    .line 1
    iget-object p3, p0, Le/a/m0/c1/a0$g;->a:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const-string p3, "preferences"

    const-string v0, "[key] = ?"

    invoke-virtual {p1, p3, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/m0/c1/a0$g;->a:Ljava/lang/String;

    return-object v0
.end method
