.class public final synthetic Le/m/d/n/j/n/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic a:Le/m/d/n/j/n/d;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/d/n/j/n/d;

    invoke-direct {v0}, Le/m/d/n/j/n/d;-><init>()V

    sput-object v0, Le/m/d/n/j/n/d;->a:Le/m/d/n/j/n/d;

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
    sget-object p1, Le/m/d/n/j/n/e;->d:Ljava/nio/charset/Charset;

    const-string p1, "event"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
