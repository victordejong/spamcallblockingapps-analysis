.class public abstract Le/f/a/n/q/d/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/n/q/d/m$f;,
        Le/f/a/n/q/d/m$b;,
        Le/f/a/n/q/d/m$e;,
        Le/f/a/n/q/d/m$a;,
        Le/f/a/n/q/d/m$c;,
        Le/f/a/n/q/d/m$d;
    }
.end annotation


# static fields
.field public static final a:Le/f/a/n/q/d/m;

.field public static final b:Le/f/a/n/q/d/m;

.field public static final c:Le/f/a/n/q/d/m;

.field public static final d:Le/f/a/n/q/d/m;

.field public static final e:Le/f/a/n/q/d/m;

.field public static final f:Le/f/a/n/q/d/m;

.field public static final g:Le/f/a/n/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/h<",
            "Le/f/a/n/q/d/m;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/f/a/n/q/d/m$a;

    invoke-direct {v0}, Le/f/a/n/q/d/m$a;-><init>()V

    sput-object v0, Le/f/a/n/q/d/m;->a:Le/f/a/n/q/d/m;

    .line 2
    new-instance v0, Le/f/a/n/q/d/m$d;

    invoke-direct {v0}, Le/f/a/n/q/d/m$d;-><init>()V

    sput-object v0, Le/f/a/n/q/d/m;->b:Le/f/a/n/q/d/m;

    .line 3
    new-instance v0, Le/f/a/n/q/d/m$b;

    invoke-direct {v0}, Le/f/a/n/q/d/m$b;-><init>()V

    sput-object v0, Le/f/a/n/q/d/m;->c:Le/f/a/n/q/d/m;

    .line 4
    new-instance v0, Le/f/a/n/q/d/m$c;

    invoke-direct {v0}, Le/f/a/n/q/d/m$c;-><init>()V

    sput-object v0, Le/f/a/n/q/d/m;->d:Le/f/a/n/q/d/m;

    .line 5
    new-instance v1, Le/f/a/n/q/d/m$e;

    invoke-direct {v1}, Le/f/a/n/q/d/m$e;-><init>()V

    sput-object v1, Le/f/a/n/q/d/m;->e:Le/f/a/n/q/d/m;

    .line 6
    sput-object v0, Le/f/a/n/q/d/m;->f:Le/f/a/n/q/d/m;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    .line 7
    invoke-static {v1, v0}, Le/f/a/n/h;->a(Ljava/lang/String;Ljava/lang/Object;)Le/f/a/n/h;

    move-result-object v0

    sput-object v0, Le/f/a/n/q/d/m;->g:Le/f/a/n/h;

    const/4 v0, 0x1

    .line 8
    sput-boolean v0, Le/f/a/n/q/d/m;->h:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(IIII)Le/f/a/n/q/d/m$f;
.end method

.method public abstract b(IIII)F
.end method
