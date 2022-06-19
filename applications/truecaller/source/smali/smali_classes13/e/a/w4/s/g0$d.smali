.class public final Le/a/w4/s/g0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f4/g/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/w4/s/g0;->Uj(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/w4/s/g0;


# direct methods
.method public constructor <init>(Le/a/w4/s/g0;)V
    .locals 0

    iput-object p1, p0, Le/a/w4/s/g0$d;->a:Le/a/w4/s/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le/a/f4/g/t;Ljava/lang/String;)Le/a/f4/g/t;
    .locals 0

    const-string p2, "searchResult"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object p2, p0, Le/a/w4/s/g0$d;->a:Le/a/w4/s/g0;

    invoke-static {p2, p1}, Le/a/w4/s/g0;->Ij(Le/a/w4/s/g0;Le/a/f4/g/t;)Le/a/f4/g/t;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method
