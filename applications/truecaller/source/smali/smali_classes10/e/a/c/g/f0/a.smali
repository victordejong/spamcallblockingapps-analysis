.class public final Le/a/c/g/f0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\u001a\u000c\u0010\u0008\u001a\u00020\u0004*\u00020\u0004H\u0000\u001a\u001e\u0010\t\u001a\u00020\u0004*\u00020\u00012\u0006\u0010\n\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0004H\u0002\u001a\u001e\u0010\u000c\u001a\u00020\u0004*\u00020\u00012\u0006\u0010\n\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0004H\u0002\u001a\u001e\u0010\r\u001a\u00020\u0004*\u00020\u00012\u0006\u0010\n\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0004H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "MIDDLE",
        "Lkotlin/text/Regex;",
        "NUMBER",
        "NUM_TOKEN",
        "",
        "PREFIX",
        "SUFFIX",
        "URL_PREF_REPLACE",
        "processArabicString",
        "processMiddle",
        "input",
        "replacement",
        "processPrefix",
        "processSuffix",
        "insights-categorizer"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Ls1/f0/h;

.field public static final b:Ls1/f0/h;

.field public static final c:Ls1/f0/h;

.field public static final d:Ls1/f0/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ls1/f0/h;

    const-string v1, "([0-9]+)([\u0621-\u064a]+)"

    invoke-direct {v0, v1}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/a/c/g/f0/a;->a:Ls1/f0/h;

    .line 2
    new-instance v0, Ls1/f0/h;

    const-string v1, "([\u0621-\u064a]+)([0-9]+)"

    invoke-direct {v0, v1}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/a/c/g/f0/a;->b:Ls1/f0/h;

    .line 3
    new-instance v0, Ls1/f0/h;

    const-string v1, "([\u0621-\u064a]+)([0-9]+)([\u0621-\u064a]+)"

    invoke-direct {v0, v1}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/a/c/g/f0/a;->c:Ls1/f0/h;

    .line 4
    new-instance v0, Ls1/f0/h;

    const-string v1, "https?://(www\\.)?[-a-zA-Z0-9@:%._+~#=]{1,256}"

    invoke-direct {v0, v1}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v0, Ls1/f0/h;

    const-string v1, "([0-9]+)"

    invoke-direct {v0, v1}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/a/c/g/f0/a;->d:Ls1/f0/h;

    return-void
.end method
