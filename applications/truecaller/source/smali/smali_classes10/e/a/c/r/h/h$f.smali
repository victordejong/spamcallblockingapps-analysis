.class public final Le/a/c/r/h/h$f;
.super Le/a/c/r/h/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/r/h/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static final a:Le/a/c/r/h/h$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/c/r/h/h$f;

    invoke-direct {v0}, Le/a/c/r/h/h$f;-><init>()V

    sput-object v0, Le/a/c/r/h/h$f;->a:Le/a/c/r/h/h$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/c/r/h/h;-><init>(Ls1/z/c/f;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "Offers"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "GRM_OFFERS"

    return-object v0
.end method
