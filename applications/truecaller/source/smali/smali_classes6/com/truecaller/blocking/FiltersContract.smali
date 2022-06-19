.class public Lcom/truecaller/blocking/FiltersContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/blocking/FiltersContract$Filters;,
        Lcom/truecaller/blocking/FiltersContract$a;
    }
.end annotation


# static fields
.field public static a:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.truecaller"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/truecaller/blocking/FiltersContract;->a:Landroid/net/Uri;

    return-void
.end method
