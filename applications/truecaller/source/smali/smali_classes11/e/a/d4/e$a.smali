.class public final Le/a/d4/e$a;
.super Le/a/d4/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/d4/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final c:Le/a/d4/e$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/d4/e$a;

    invoke-direct {v0}, Le/a/d4/e$a;-><init>()V

    sput-object v0, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "Google Play Services"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v2}, Le/a/d4/e;-><init>(Ljava/lang/String;ILs1/z/c/f;)V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
