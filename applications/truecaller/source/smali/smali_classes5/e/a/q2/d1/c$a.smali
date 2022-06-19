.class public final Le/a/q2/d1/c$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q2/d1/c;-><init>(Le/a/q2/b1/a;Landroid/content/ContentResolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/q2/d1/c;


# direct methods
.method public constructor <init>(Le/a/q2/d1/c;)V
    .locals 0

    iput-object p1, p0, Le/a/q2/d1/c$a;->b:Le/a/q2/d1/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/q2/d1/c$a;->b:Le/a/q2/d1/c;

    .line 2
    iget-object v0, v0, Le/a/q2/d1/c;->b:Le/a/q2/b1/a;

    const-string v1, "clientId"

    .line 3
    invoke-interface {v0, v1}, Le/a/q2/b1/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_4

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/q2/d1/c$a;->b:Le/a/q2/d1/c;

    .line 5
    iget-object v0, v0, Le/a/q2/d1/c;->c:Landroid/content/ContentResolver;

    const-string v3, "android_id"

    .line 6
    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const-string v0, "it"

    .line 7
    invoke-static {v0}, Le/d/c/a/a;->e2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_6

    .line 8
    iget-object v2, p0, Le/a/q2/d1/c$a;->b:Le/a/q2/d1/c;

    .line 9
    iget-object v2, v2, Le/a/q2/d1/c;->b:Le/a/q2/b1/a;

    .line 10
    invoke-interface {v2, v1, v0}, Le/a/q2/b1/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    move-object v0, v2

    :goto_4
    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    const-string v0, ""

    :goto_5
    const-string v1, "settings.getString(Analy\u2026, it) }\n            ?: \"\""

    .line 11
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
