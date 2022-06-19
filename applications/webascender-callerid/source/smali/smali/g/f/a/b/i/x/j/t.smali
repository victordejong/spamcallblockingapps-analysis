.class final synthetic Lg/f/a/b/i/x/j/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/f/a/b/i/x/j/b0$b;


# static fields
.field private static final a:Lg/f/a/b/i/x/j/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/f/a/b/i/x/j/t;

    invoke-direct {v0}, Lg/f/a/b/i/x/j/t;-><init>()V

    sput-object v0, Lg/f/a/b/i/x/j/t;->a:Lg/f/a/b/i/x/j/t;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lg/f/a/b/i/x/j/b0$b;
    .locals 1

    sget-object v0, Lg/f/a/b/i/x/j/t;->a:Lg/f/a/b/i/x/j/t;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    invoke-static {p1}, Lg/f/a/b/i/x/j/b0;->L(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
