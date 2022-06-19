.class public Le/a/t/b/b$c;
.super Le/a/t/b/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Le/a/t/b/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/t/b/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.truecaller"

    return-object v0
.end method
