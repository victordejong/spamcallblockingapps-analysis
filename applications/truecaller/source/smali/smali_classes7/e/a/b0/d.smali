.class public final Le/a/b0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "https://privacy.truecaller.com/privacy-policy-eu"

    const-string v1, "https://privacy.truecaller.com/privacy-policy"

    const-string v2, "https://www.truecaller.com/california-privacy-policy"

    const-string v3, "https://www.truecaller.com/south-africa-privacy-policy"

    const-string v4, "https://www.truecaller.com/brazil-privacy-policy"

    .line 1
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/b0/d;->a:[Ljava/lang/String;

    const-string v0, "https://www.truecaller.com/terms-of-service#eu"

    const-string v1, "https://www.truecaller.com/terms-of-service#row"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/b0/d;->b:[Ljava/lang/String;

    return-void
.end method
