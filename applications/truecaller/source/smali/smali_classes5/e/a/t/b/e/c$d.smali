.class public Le/a/t/b/e/c$d;
.super Le/a/t/b/e/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t/b/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Le/a/t/b/e/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/t/b/e/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.truecaller.debug"

    return-object v0
.end method
