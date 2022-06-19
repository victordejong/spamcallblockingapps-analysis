.class public final Le/a/m0/a1$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m0/a1$i;
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/m0/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation


# direct methods
.method public static a(I)Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "history_top_called_with_aggregated_contact"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    if-lez p0, :cond_0

    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "limit"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static b()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "history"

    .line 2
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static c()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "history_with_aggregated_contact_number"

    .line 2
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static d()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "history_with_aggregated_contact"

    .line 2
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
