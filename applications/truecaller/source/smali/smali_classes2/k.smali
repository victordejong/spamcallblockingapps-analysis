.class public final Lk;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# static fields
.field public static final b:Lk;

.field public static final c:Lk;

.field public static final d:Lk;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lk;-><init>(I)V

    sput-object v0, Lk;->b:Lk;

    new-instance v0, Lk;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lk;-><init>(I)V

    sput-object v0, Lk;->c:Lk;

    new-instance v0, Lk;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lk;-><init>(I)V

    sput-object v0, Lk;->d:Lk;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lk;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 1

    iget p1, p0, Lk;->a:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    return-void
.end method
