.class public Lcom/truecaller/data/entity/messaging/Participant;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/data/entity/messaging/Participant$b;
    }
.end annotation


# static fields
.field public static final B:Lcom/truecaller/data/entity/messaging/Participant;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:I

.field public final a:J

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:J

.field public final i:I

.field public final j:Z

.field public final k:I

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:I

.field public final o:J

.field public final p:I

.field public final q:Ljava/lang/String;

.field public final r:I

.field public final s:Ljava/lang/String;

.field public final t:J

.field public final u:Lcom/truecaller/data/entity/Contact$PremiumLevel;

.field public final v:Ljava/lang/Long;

.field public final w:I

.field public final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final y:I

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/data/entity/messaging/Participant$b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    const-string v1, ""

    .line 2
    iput-object v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v0

    sput-object v0, Lcom/truecaller/data/entity/messaging/Participant;->B:Lcom/truecaller/data/entity/messaging/Participant;

    .line 4
    new-instance v0, Lcom/truecaller/data/entity/messaging/Participant$a;

    invoke-direct {v0}, Lcom/truecaller/data/entity/messaging/Participant$a;-><init>()V

    sput-object v0, Lcom/truecaller/data/entity/messaging/Participant;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lcom/truecaller/data/entity/messaging/Participant$a;)V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->a:J

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->d:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->f:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->h:J

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->g:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->i:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/truecaller/data/entity/messaging/Participant;->j:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->k:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->m:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->n:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->o:J

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->p:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->q:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->r:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->s:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->t:J

    .line 78
    invoke-static {}, Lcom/truecaller/data/entity/Contact$PremiumLevel;->values()[Lcom/truecaller/data/entity/Contact$PremiumLevel;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->u:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    .line 79
    const-class v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iput-object v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->v:Ljava/lang/Long;

    .line 80
    new-instance v1, Lw3/c/a/a/a/j/a;

    invoke-direct {v1}, Lw3/c/a/a/a/j/a;-><init>()V

    invoke-virtual {v1, v0}, Lw3/c/a/a/a/j/a;->b(Ljava/lang/Object;)Lw3/c/a/a/a/j/a;

    invoke-virtual {v1, p2}, Lw3/c/a/a/a/j/a;->a(I)Lw3/c/a/a/a/j/a;

    .line 81
    iget p2, v1, Lw3/c/a/a/a/j/a;->a:I

    .line 82
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 83
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->w:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 85
    sget-object v0, Lcom/truecaller/data/entity/SpamData;->Companion:Lcom/truecaller/data/entity/SpamData$b;

    invoke-virtual {v0, p2}, Lcom/truecaller/data/entity/SpamData$b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->x:Ljava/util/List;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->y:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->z:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/truecaller/data/entity/messaging/Participant;->A:I

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/data/entity/messaging/Participant$b;Lcom/truecaller/data/entity/messaging/Participant$a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-wide v0, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->b:J

    .line 3
    iput-wide v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->a:J

    .line 4
    iget p2, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->a:I

    .line 5
    iput p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    .line 6
    iget-object v0, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->c:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    .line 8
    iget-object v0, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->d:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    .line 9
    :cond_0
    iput-object v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->d:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 11
    :cond_1
    iput-object v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    .line 12
    iget-object v2, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->f:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 13
    :goto_0
    iput-object v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->f:Ljava/lang/String;

    .line 14
    iget-wide v1, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->h:J

    .line 15
    iput-wide v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->h:J

    .line 16
    iget-object v1, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->g:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->g:Ljava/lang/String;

    .line 18
    iget v1, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->i:I

    .line 19
    iput v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->i:I

    .line 20
    iget-boolean v1, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->j:Z

    .line 21
    iput-boolean v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->j:Z

    .line 22
    iget v1, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->k:I

    .line 23
    iput v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->k:I

    .line 24
    iget-object v1, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->l:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    .line 26
    iget-object v1, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->m:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->m:Ljava/lang/String;

    .line 28
    iget v1, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->n:I

    .line 29
    iput v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->n:I

    .line 30
    iget-wide v1, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->o:J

    .line 31
    iput-wide v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->o:J

    .line 32
    iget v1, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->p:I

    .line 33
    iput v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->p:I

    .line 34
    iget-object v1, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->q:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->q:Ljava/lang/String;

    .line 36
    iget v1, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->v:I

    iput v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->r:I

    .line 37
    iget-object v1, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->r:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->s:Ljava/lang/String;

    .line 39
    iget-wide v1, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->s:J

    .line 40
    iput-wide v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->t:J

    .line 41
    iget-object v1, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->t:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    if-eqz v1, :cond_3

    goto :goto_1

    .line 42
    :cond_3
    sget-object v1, Lcom/truecaller/data/entity/Contact$PremiumLevel;->NONE:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    :goto_1
    iput-object v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->u:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    .line 43
    iget-object v1, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->u:Ljava/lang/Long;

    .line 44
    iput-object v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->v:Ljava/lang/Long;

    .line 45
    new-instance v1, Lw3/c/a/a/a/j/a;

    invoke-direct {v1}, Lw3/c/a/a/a/j/a;-><init>()V

    invoke-virtual {v1, v0}, Lw3/c/a/a/a/j/a;->b(Ljava/lang/Object;)Lw3/c/a/a/a/j/a;

    invoke-virtual {v1, p2}, Lw3/c/a/a/a/j/a;->a(I)Lw3/c/a/a/a/j/a;

    .line 46
    iget p2, v1, Lw3/c/a/a/a/j/a;->a:I

    .line 47
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 48
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->w:I

    .line 49
    iget-object p2, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->w:Ljava/util/List;

    .line 50
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->x:Ljava/util/List;

    .line 51
    iget p2, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->x:I

    .line 52
    iput p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->y:I

    .line 53
    iget p2, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->y:I

    .line 54
    iput p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->z:I

    .line 55
    iget p1, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->z:I

    .line 56
    iput p1, p0, Lcom/truecaller/data/entity/messaging/Participant;->A:I

    return-void
.end method

.method public static a(Ljava/lang/String;Le/a/b0/q/z;Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;
    .locals 2

    const/16 v0, 0x40

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 2
    sget-object p1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/truecaller/data/entity/messaging/Participant$b;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    .line 4
    iput-object p0, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->d:Ljava/lang/String;

    .line 5
    iput-object p0, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    new-instance p1, Lcom/truecaller/data/entity/messaging/Participant$b;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    .line 8
    iput-object p0, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->d:Ljava/lang/String;

    .line 9
    iput-object p0, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p0

    return-object p0

    .line 11
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/truecaller/data/entity/messaging/Participant;->d(Ljava/lang/String;Le/a/b0/q/z;Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Le/a/b0/q/z;Landroid/net/Uri;)Lcom/truecaller/data/entity/messaging/Participant;
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/data/entity/messaging/Participant$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->v()Lcom/truecaller/data/entity/Number;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v1

    .line 5
    iput-object v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    .line 7
    iput-object p1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->f:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Normalized number cannot be null"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_0
    if-eqz p2, :cond_2

    .line 9
    iget-object p1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->f:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lw3/c/a/a/a/h;->i(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 13
    iget-object p1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 14
    invoke-interface {p2, p1}, Le/a/b0/q/z;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {p1}, Lw3/c/a/a/a/h;->i(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 16
    iput-object p1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->f:Ljava/lang/String;

    .line 17
    :cond_2
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->l()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 18
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->l()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 19
    iput-wide p1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->h:J

    .line 20
    :cond_3
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 21
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object p0

    .line 22
    iput-object p0, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->l:Ljava/lang/String;

    :cond_4
    if-eqz p3, :cond_5

    .line 23
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    .line 24
    iput-object p0, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->m:Ljava/lang/String;

    .line 25
    :cond_5
    invoke-virtual {v0}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/net/Uri;Le/a/b0/q/z;Ljava/lang/String;)[Lcom/truecaller/data/entity/messaging/Participant;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sms"

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "smsto"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr v2, p0

    sub-int/2addr v2, v4

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    const/4 p0, 0x0

    goto :goto_3

    .line 8
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_3

    .line 9
    sget-object p0, Lw3/c/a/a/a/a;->b:[Ljava/lang/String;

    goto :goto_3

    .line 10
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, -0x1

    move v6, v3

    move v7, v6

    move v8, v7

    move v9, v4

    :goto_0
    if-ge v6, p0, :cond_7

    .line 11
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const-string v11, ",;"

    invoke-virtual {v11, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ltz v10, :cond_6

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v7, v9, 0x1

    if-ne v9, v5, :cond_5

    move v6, p0

    .line 12
    :cond_5
    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v7

    move v7, v3

    :goto_1
    add-int/lit8 v8, v6, 0x1

    move v6, v8

    goto :goto_0

    :cond_6
    add-int/lit8 v6, v6, 0x1

    move v7, v4

    goto :goto_0

    :cond_7
    if-nez v7, :cond_8

    goto :goto_2

    .line 13
    :cond_8
    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 15
    :goto_3
    array-length v1, p0

    :goto_4
    if-ge v3, v1, :cond_a

    aget-object v2, p0, v3

    .line 16
    invoke-static {v2, p1, p2}, Lcom/truecaller/data/entity/messaging/Participant;->a(Ljava/lang/String;Le/a/b0/q/z;Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v2

    .line 17
    iget v5, v2, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    if-eqz v5, :cond_9

    if-eq v5, v4, :cond_9

    goto :goto_5

    .line 18
    :cond_9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 19
    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/truecaller/data/entity/messaging/Participant;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/truecaller/data/entity/messaging/Participant;

    return-object p0
.end method

.method public static d(Ljava/lang/String;Le/a/b0/q/z;Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-interface {p1, p0, p2, v0}, Le/a/b0/q/z;->e(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 2
    new-instance p1, Lcom/truecaller/data/entity/messaging/Participant$b;

    invoke-direct {p1, v0}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    .line 3
    iput-object p0, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/truecaller/data/entity/messaging/Participant$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    .line 5
    iput-object p2, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 6
    invoke-interface {p1, p2}, Le/a/b0/q/z;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lw3/c/a/a/a/h;->i(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 8
    iput-object p1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->f:Ljava/lang/String;

    :cond_1
    move-object p1, v0

    .line 9
    :goto_0
    iput-object p0, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->d:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/truecaller/data/entity/messaging/Participant$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/data/entity/messaging/Participant$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(Lcom/truecaller/data/entity/messaging/Participant;Lcom/truecaller/data/entity/messaging/Participant$a;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/truecaller/data/entity/messaging/Participant;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/truecaller/data/entity/messaging/Participant;

    .line 3
    iget v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    iget v2, p1, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v0, "Should never happen"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->fail([Ljava/lang/String;)V

    const-string v0, "unknwon"

    return-object v0

    :cond_0
    const-string v0, "hidden"

    return-object v0

    :cond_1
    const-string v0, "im_group"

    return-object v0

    :cond_2
    const-string v0, "tc"

    return-object v0

    :cond_3
    const-string v0, "email"

    return-object v0

    :cond_4
    const-string v0, "alphanum"

    return-object v0

    :cond_5
    const-string v0, "phone_number"

    return-object v0
.end method

.method public h(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->r:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->w:I

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    invoke-static {v0}, Lw3/c/a/a/a/h;->m(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public k(Z)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->i:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-boolean v2, p0, Lcom/truecaller/data/entity/messaging/Participant;->j:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public l()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->y:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public m()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->n:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->i:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->j:Z

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/data/entity/messaging/Participant;->o()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->i:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/messaging/Participant;->m()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/truecaller/data/entity/messaging/Participant;->h(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->n:I

    const/16 v3, 0x20

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "{id : "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/truecaller/data/entity/messaging/Participant;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", source : \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->n:I

    const-string v2, "\"}"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-wide v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 8
    iget-object p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-boolean p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->j:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget-object p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->n:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget-wide v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->o:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 16
    iget p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->p:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget-object p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    iget p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->r:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget-object p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->s:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    iget-wide v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->t:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 21
    iget-object p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->u:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/truecaller/data/entity/Contact$PremiumLevel;->NONE:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget-object p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->v:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 23
    iget-object p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->x:Ljava/util/List;

    const-string v0, ","

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->y:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->z:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    iget p2, p0, Lcom/truecaller/data/entity/messaging/Participant;->A:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
