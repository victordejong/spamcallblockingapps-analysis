.class public final synthetic Le/m/d/n/j/j/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic a:Le/m/d/n/j/j/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/d/n/j/j/a;

    invoke-direct {v0}, Le/m/d/n/j/j/a;-><init>()V

    sput-object v0, Le/m/d/n/j/j/a;->a:Le/m/d/n/j/j/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 1
    sget p1, Le/m/d/n/j/j/w;->q:I

    const-string p1, ".ae"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
