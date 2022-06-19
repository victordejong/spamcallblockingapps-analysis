.class public final Lcom/truecaller/blocking/FiltersContract$Filters;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/truecaller/blocking/FiltersContract$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/blocking/FiltersContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Filters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;,
        Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;
    }
.end annotation


# direct methods
.method public static a()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/blocking/FiltersContract;->a:Landroid/net/Uri;

    const-string v1, "filters"

    .line 2
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
