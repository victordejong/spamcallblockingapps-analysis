.class public final Le/a/d0/b/e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/truecaller/blocking/FilterMatch;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d0/b/a;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/d0/b/a;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/d0/b/e;->b:Le/a/d0/b/a;

    iput-object p2, p0, Le/a/d0/b/e;->c:Landroid/content/Context;

    iput-object p3, p0, Le/a/d0/b/e;->d:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Le/a/d0/b/e;->c:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).toUpperCase(locale)"

    const-string v3, "Locale.ENGLISH"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v5, v3, v1, v5, v2}, Le/d/c/a/a;->p(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v4

    .line 3
    :goto_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v4, v3, v0, v4, v2}, Le/d/c/a/a;->p(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/d0/b/e;->b:Le/a/d0/b/a;

    .line 5
    iget-object v5, v0, Le/a/d0/b/a;->i:Le/a/h0/j;

    .line 6
    iget-object v6, p0, Le/a/d0/b/e;->d:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 7
    invoke-static {v1, v4}, Lw3/c/a/a/a/h;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 8
    invoke-interface/range {v5 .. v11}, Le/a/h0/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/truecaller/blocking/FilterMatch;

    move-result-object v0

    return-object v0
.end method
