.class public final Le/a/c/r/j/p$b;
.super Le/a/c/r/j/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/r/j/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final b:Le/a/c/r/j/p$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/c/r/j/p$b;

    invoke-direct {v0}, Le/a/c/r/j/p$b;-><init>()V

    sput-object v0, Le/a/c/r/j/p$b;->b:Le/a/c/r/j/p$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/c/r/j/p;-><init>(Ls1/z/c/f;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Bill"

    return-object v0
.end method
