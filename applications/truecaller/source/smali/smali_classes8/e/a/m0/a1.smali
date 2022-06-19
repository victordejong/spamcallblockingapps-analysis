.class public final Le/a/m0/a1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/m0/a1$c;,
        Le/a/m0/a1$e;,
        Le/a/m0/a1$f;,
        Le/a/m0/a1$n;,
        Le/a/m0/a1$k;,
        Le/a/m0/a1$j;,
        Le/a/m0/a1$h;,
        Le/a/m0/a1$m;,
        Le/a/m0/a1$a;,
        Le/a/m0/a1$b;,
        Le/a/m0/a1$l;,
        Le/a/m0/a1$i;,
        Le/a/m0/a1$d;,
        Le/a/m0/a1$g;
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

    sput-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    return-void
.end method

.method public static a()Landroid/net/Uri;
    .locals 1

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    return-object v0
.end method
